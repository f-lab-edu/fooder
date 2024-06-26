package com.ryumina.fooder.domain.order.model.entity;

import lombok.Builder;
import lombok.Getter;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceCreator;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

@Table("ORDER_ITEM")
@Getter
public class OrderItem {

    @Id
    @Column("ORDER_ITEM_ID")
    private Long id;

    @Column("MENU_ID")
    private Long menuId;

    @Column("MENU_NAME")
    private String name;

    @Column("MENU_PRICE")
    private int price;

    @Column("MENU_COUNT")
    private int count;

    @MappedCollection(idColumn = "ORDER_ITEM_ID", keyColumn = "ORDER_OPTION_GROUP_ID")
    private Set<OrderOptionGroup> orderOptionGroupList = new LinkedHashSet<>();

    public OrderItem(Long menuId, String name, int price, int count, List<OrderOptionGroup> orderOptionGroupList) {
        this(null, menuId, name, price, count, orderOptionGroupList);
    }

    @Builder
    @PersistenceCreator
    public OrderItem(Long id, Long menuId, String name, int price, int count, List<OrderOptionGroup> orderOptionGroupList) {
        this.id = id;
        this.menuId = menuId;
        this.name = name;
        this.price = price;
        this.count = count;
        this.orderOptionGroupList.addAll(orderOptionGroupList);
    }

    public int getItemPrice() {
        return (this.price + orderOptionGroupList.stream().mapToInt(OrderOptionGroup::getOptionPrice).sum()) * this.count;
    }

}
