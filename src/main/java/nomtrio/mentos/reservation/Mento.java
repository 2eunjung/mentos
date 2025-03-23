package nomtrio.mentos.reservation;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Getter
@Setter
@ToString
public class Mento {

 private int no;
 private int memberNo;
 private String title;
 private String field;
 private String description;
 private double rating;
}
