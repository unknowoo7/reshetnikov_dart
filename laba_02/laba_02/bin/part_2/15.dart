/* 
* (23, 89, pef:'Oo', pruf: 3.976)
* Извлеките из записи только именованные поля и выведите в их терминал
*/


void main() {
  try {
    (int, int, {String pef, double pruf}) data = (23, 89, pef:'Oo', pruf: 3.976);
    print(data.$1);
    print(data.$2);
  }
  catch(e){
    print(e);
  }
}
