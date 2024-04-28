-- store
INSERT INTO STORE(NAME, FOOD_CATEGORY, TELEPHONE_NUMBER, ZIP_CODE, ADDRESS, DETAIL_ADDRESS, MIN_ORDER_PRICE,
                  DELIVERY_PRICE, START_TIME, FINISH_TIME)
VALUES ('푸더치킨', 'CHICKEN', '01034567890', '00123', '서울특별시 강남구 강남대로 14', '푸더빌딩 5층', 12000, 2500, '09:00', '16:00');
INSERT INTO STORE(NAME, FOOD_CATEGORY, TELEPHONE_NUMBER, ZIP_CODE, ADDRESS, DETAIL_ADDRESS, MIN_ORDER_PRICE,
                  DELIVERY_PRICE, START_TIME, FINISH_TIME)
VALUES ('푸더버거', 'BURGER', '01041415151', '54321', '서울특별시 푸더구 푸더동 34', '푸더상가 225호', 8000, 3500, '12:00', '22:00');
INSERT INTO STORE(NAME, FOOD_CATEGORY, TELEPHONE_NUMBER, ZIP_CODE, ADDRESS, DETAIL_ADDRESS, MIN_ORDER_PRICE,
                  DELIVERY_PRICE, START_TIME, FINISH_TIME)
VALUES ('도미노피자', 'PIZZA', '01022223333', '06242', '서울특별시 강남구 테헤란로 318 (역삼동)', '역삼빌딩 3층', 15000, 1500, '10:00', '23:30');


-- menu
INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (1, '뿌링클 콤보', '[윙 / 봉 / 닭다리 5조각씩 제공] 뿌링뿌링! 세상에 없던 마법의 맛 뿌링클, 퍽퍽한 닭가슴살 없이 윙, 봉, 닭다리만 담은 콤보',
        '뿌링클 콤보, 치킨무 1개, 뿌링뿌링 소스 1개, 300ml 펩시콜라 1개', 23000);
INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (1, '후라이드', '명불허전! 바삭함, 고소함 가득! 정직하게 튀긴 후라이드 치킨의 정석',
        '후라이드, 치킨무 1개, 300ml 펩시콜라 1개', 20000);
INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (1, '골드킹', '단짠단짠! 숙성간장과 꿀의 황금비율',
        '골드킹, 치킨무 1개, 300ml 펩시콜라 1개', 23000);

INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (2, '통치킨버거세트', '부드러운 닭다리살을 튀겨 통째로! 크기에 한 번, 맛에 두 번 놀랍니다!',
        '통치킨버거, 감자튀김R, 케찹1개, 코카콜라 1개', 5800);
INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (2, '치즈버거세트', '클래식함의 정석! 고소함이 잔뜩 치즈버거',
        '치즈버거, 감자튀김R, 케찹1개, 코카콜라 1개', 4500);

INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (3, '와일드 와일드 웨스트 스테이크 L', '카우보이 버터 치즈 소스로 완성된 미국 서부 정통 스테이크의 풍미를 담은 피자',
        '와일드 와일드 웨스트 스테이크 L, 핫소스 1개, 갈릭디핑소스 1개, 피클 1개', 33900);
INSERT INTO MENU(STORE_ID, NAME, DESCRIPTION, BASE_MENU_DESCRIPTION, PRICE)
VALUES (3, '블랙타이거 슈림프 L', '바다와 육지의 대왕이 하나되는 맛',
        '블랙타이거 슈림프 L, 핫소스 1개, 갈릭디핑소스 1개, 피클 1개', 36900);


-- optionGroupSpec / optionSpec
INSERT INTO OPTION_GROUP_SPEC(MENU_ID, NAME)
VALUES (1, '소스');
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (1, '뿌링뿌링소스', 2500);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (1, '양념소스', 1500);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (1, '머스타드소스', 1500);

INSERT INTO OPTION_GROUP_SPEC(MENU_ID, NAME)
VALUES (1, '디저트');
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (2, '뿌링치즈볼', 4500);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (2, '뿌링소떡', 3000);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (2, '웨지감자', 3000);

INSERT INTO OPTION_GROUP_SPEC(MENU_ID, NAME)
VALUES (1, '기타');
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (3, '치킨무', 4500);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (3, '생와사비', 3000);
INSERT INTO OPTION_SPEC(OPTION_GROUP_SPEC_ID, NAME, PRICE)
VALUES (3, '히말라야소금', 3000);

