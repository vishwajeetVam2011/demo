import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class DataBaseMethod{
  Future addStudent(Map<String, dynamic> studentInfoMap, String id) async{
    return await FirebaseFirestore
        .instance
        .collection("Students")
        .doc(id)
        .set(studentInfoMap);
  }
  Future<Stream<QuerySnapshot>> getStudentDetails()async{
    return await FirebaseFirestore
        .instance
        .collection("Students")
        .snapshots();
  }

  updateAttendence(String attendencecase, String id) async{
    return await FirebaseFirestore
        .instance
        .collection("Students")
        .doc(id)
        .update({attendencecase : true }
    );
  }

  deleteStudentData( String id) async{
    return await FirebaseFirestore
        .instance
        .collection("Students")
        .doc(id)
        .delete();

  }

}
