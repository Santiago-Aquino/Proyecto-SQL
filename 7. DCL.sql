use ascensores_aquino;

-- aqui se hace la creacion de los usuarios.

create user if not exists 'agustinrodriguez'@'localhost' identified by 'acd651';
create user if not exists 'manuelfernandez'@'localhost' identified by 'abc481';

-- Esta sentencia es para refrescar los permisos.

flush privileges;

-- aqui damos permiso de solo lectura para el primer usuario.

grant select on ascensores_aquino.* to 'agustinrodriguez'@'localhost';

-- aqui damos permisos de lectura, insercion y modificacion al segundo usuario.

grant select, insert, update on ascensores_aquino.* to 'manuelfernandez'@'localhost';