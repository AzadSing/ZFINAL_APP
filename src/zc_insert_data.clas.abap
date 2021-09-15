CLASS zc_insert_data DEFINITION
PUBLIC
FINAL
CREATE PUBLIC .



PUBLIC SECTION.



INTERFACES if_oo_adt_classrun .
METHODS add_user_data.

PROTECTED SECTION.
PRIVATE SECTION.
ENDCLASS.





CLASS zc_insert_data IMPLEMENTATION.



METHOD add_user_data.



data bustab1 type STANDARD TABLE OF zvalue.

bustab1 = VALUE #(
( row_number = 1 pnr = 10 travel_id = 2 bus_id = 0 )
).




insert zvalue from table @bustab1.
ENDMETHOD.



METHOD if_oo_adt_classrun~main.
*add_user_data(  ).
*out->write( 'Hey' ).
*    READ ENTITIES OF ZI_BUS_G4
*          ENTITY Bus
*            ALL FIELDS
*                WITH CORRESPONDING #(  )
*            RESULT DATA(travels).
*     SELECT COUNT( * ) FROM ztravel_g4
*     WHERE bus_id = '2' AND start_date = '21121221'
*     INTO @DATA(travel).


*MODIFY ENTITIES OF zi_booking_g4 IN LOCAL MODE
*                  ENTITY Booking
*                    UPDATE
*                      FIELDS ( Pnr TravelId TravelUuid CurrentStatus )
*                      WITH VALUE #( FOR key in keys
*                                    ( %tky = key-%tky
*                                      Pnr = attr1 ) ).

*SELECT COUNT( * ) FROM ztravel_g4
*        INTO @DATA(count_total_rows).
*    out->write( count_total_rows ).

*    DELETE From zbooking_g4.
DATA: stamp_2 TYPE TIMESTAMPL.

GET TIME STAMP FIELD stamp_2.
out->write( stamp_2 ).
ENDMETHOD.
ENDCLASS.
