import de.bezier.data.sql.*;
import de.bezier.data.sql.mapper.*;

SQLite db;
String sql;
int state;
TextBox e;
ButtonCircle button1;
void setup(){
size(600,200);
e = new TextBox(100,100,300,40);
 button1 = new ButtonCircle(425, 123, 30, color(0), color(255));
 db = new SQLite(this,"eksamensprojekt.db");
  if ( db.connect() ) {
db.query("SELECT ID,ID,Navn From Bruger;");
while (db.next()) {
 println("ID: " + db.getInt("ID")+"\t,ID"+db.getString("Navn")); 
 }
  }
}

void draw(){
  background(100,100,150);
  if(state == 0) {
         fill(0);
     text("Indsæt navn:",50,50);
     e.draw();
     button1.draw();
  }
  if (state == 1) {
   fill(0);
   text("Spørgsmål 1: hvad er 2 + 2?",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 2) {
   fill(0);
   text("Spørgsmål 2: hvad er 0 + 0",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 3) {
   fill(0);
   text("Spørgsmål 3: hvad er 0 + 1?",50,50);
   e.draw();
   button1.draw();
  } 
  if (state == 4) {
   fill(0);
   text("Spørgsmål 4: hvad er 1 + 1?",50,50);
   e.draw();
   button1.draw();
  }
  if (state == 5) {
   fill(0);
   text("Nu er du færdig med testen og kan lukke programmet.",10,50);
  }
}

void keyPressed() {
  e.update();
}

void indseat_navn (String name) {
sql = "insert into Bruger (ID,Navn) values (null," + "'" +  name + "'" + ");";
db.execute(sql);
}
void indseat_sp1 (String svar1) {
sql = "insert into Brugersvar (ID_bruger,ID_Spørgsmål,svar) values (4,1," + "'" +  svar1 + "'" + ");";
db.execute(sql);
}
void indseat_sp2 (String svar2) {
sql = "insert into Brugersvar (ID_bruger,ID_Spørgsmål,svar) values (4,2," + "'" +  svar2 + "'" + ");";
db.execute(sql);
}
void indseat_sp3 (String svar3) {
sql = "insert into Brugersvar (ID_bruger,ID_Spørgsmål,svar) values (4,3," + "'" +  svar3 + "'" + ");";
db.execute(sql);
}
void indseat_sp4 (String svar4) {
sql = "insert into Brugersvar (ID_bruger,ID_Spørgsmål,svar) values (4,4," + "'" +  svar4 + "'" + ");";
db.execute(sql);
}
void mousePressed() {
  print(state);
  e.Pressed();
  if (button1.overCircle()) {
   if (state == 0) {
     indseat_navn(e.slutText);
     state += 1;
   }
   else if (state == 1) {
     indseat_sp1(e.slutText);
     state += 1;
   }
   else if (state == 2) {
     indseat_sp2(e.slutText);
     state += 1;
   }
   else if (state == 3) {
     indseat_sp3(e.slutText);
     state += 1;
   }
   else if (state == 4) {
     indseat_sp4(e.slutText);
     state += 1;
   }
   else if (state == 5) {
     db.close();
   }
  }
}
