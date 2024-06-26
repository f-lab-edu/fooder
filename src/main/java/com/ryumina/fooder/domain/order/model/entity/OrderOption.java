package com.ryumina.fooder.domain.order.model.entity;

import com.ryumina.fooder.domain.store.model.Option;
import lombok.Builder;
import lombok.Getter;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.PersistenceCreator;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Table("ORDER_OPTION")
@Getter
public class OrderOption {

    @Id
    @Column("ORDER_OPTION_ID")
    private Long id;

    @Column("ORDER_OPTION_NAME")
    private String name;

    @Column("ORDER_OPTION_PRICE")
    private int price;

    public OrderOption(String name, int price) {
        this(null, name, price);
    }

    @Builder
    @PersistenceCreator
    public OrderOption(Long id, String name, int price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Option convertToOption() {
        return new Option(name, price);
    }

}
