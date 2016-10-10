for (rock_it = 0; rock_it < 20; rock_it++) {
    var arr = ['html', 'htm', 'jpeg', 'png', 'jpg', 'gif', 'js'];
    var keylist = 'abcdefghijklmnopqrstuvwxyz';
    var temp = '';
    var rand = Math.floor(Math.random() * arr.length);
    temp = '';
    plength = Math.floor(Math.random() * (10 - 3 + 1)) + 3;
    for (i = 0; i < plength; i++) temp += keylist.charAt(Math.floor(Math.random() * keylist.length));
    temp += '.' + arr[rand];
    print(temp);
}
