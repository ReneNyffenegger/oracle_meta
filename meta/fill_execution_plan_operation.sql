insert into execution_plan_operation (name_operation, name_option) values ('and-equal'               ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'index'                 );
insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'merge'                 );
insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'minus'                 );
insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'or'                    );
insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'and'                   );
insert into execution_plan_operation (name_operation, name_option) values ('bitmap'                  , 'key iteration'         );

insert into execution_plan_operation (name_operation, name_option) values ('connect by'              ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('cncatenation'            ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('count'                   ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('count'                   , 'stopkey'               );

insert into execution_plan_operation (name_operation, name_option) values ('cube scan'               ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('cube scan'               , 'partion outer'         );
insert into execution_plan_operation (name_operation, name_option) values ('cube scan'               , 'outer'                 );

insert into execution_plan_operation (name_operation, name_option) values ('domain index'            ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('filter'                  ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('first row'               ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('for update'              ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('hash'                    , 'group by'              );
insert into execution_plan_operation (name_operation, name_option) values ('hash'                    , 'group by pivot'        );

-- Join operations
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'anti'                  );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'semi'                  );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'right anti'            );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'right semi'            );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'outer'                 );
insert into execution_plan_operation (name_operation, name_option) values ('hash join'               , 'right outer'           );

-- Access methods:
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'unique scan'           );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'range scan'            );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'range scan descending' );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'full scan'             );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'full scan descending'  );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'fast full scan'        );
insert into execution_plan_operation (name_operation, name_option) values ('index'                   , 'skip scan'             );

insert into execution_plan_operation (name_operation, name_option) values ('inlist iterator'         ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('intersection'            ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('merge join'              , 'outer'                 );
insert into execution_plan_operation (name_operation, name_option) values ('merge join'              , 'anti'                  );
insert into execution_plan_operation (name_operation, name_option) values ('merge join'              , 'semi'                  );
insert into execution_plan_operation (name_operation, name_option) values ('merge join'              , 'cartesian'             );

-- Access methods:
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'full'                  );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'sample'                );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'cluster'               );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'hash'                  );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'by rowid range'        );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'sample by rowid range' );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'by user rowid'         );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'by index rowid'        );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'by global index rowid' );
insert into execution_plan_operation (name_operation, name_option) values ('mat_view rewrite access' , 'by local index rowid'  );

insert into execution_plan_operation (name_operation, name_option) values ('minus'                   ,  null                   );

-- Join operations
insert into execution_plan_operation (name_operation, name_option) values ('nested loops'            ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('nested loops'            , 'outer'                 );

insert into execution_plan_operation (name_operation, name_option) values ('partition'               ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('partition'               , 'single'                );
insert into execution_plan_operation (name_operation, name_option) values ('partition'               , 'iterator'              );
insert into execution_plan_operation (name_operation, name_option) values ('partition'               , 'all'                   );
insert into execution_plan_operation (name_operation, name_option) values ('partition'               , 'inlist'                );
insert into execution_plan_operation (name_operation, name_option) values ('partition'               , 'invalid'               );

-- Does the following really exist?
insert into execution_plan_operation (name_operation, name_option) values ('px iterator'             , 'block,chunk'           );

insert into execution_plan_operation (name_operation, name_option) values ('px coordinator'          ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('px_partition'            ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('px receive'              ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('px send'                 , 'qc (random),hash,range');

insert into execution_plan_operation (name_operation, name_option) values ('remote'                  ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('sequence'                ,  null                   );

insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'aggregate'             );
insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'unique'                );
insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'group by'              );
insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'group by pivot'        );
insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'join'                  );
insert into execution_plan_operation (name_operation, name_option) values ('sort'                    , 'order by'              );

-- Access methods:
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'full'                  );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'sample'                );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'cluster'               );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'hash'                  );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'by rowid range'        );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'sample by rowid range' );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'by user rowid'         );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'by index rowid'        );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'by global index rowid' );
insert into execution_plan_operation (name_operation, name_option) values ('table access'            , 'by local index rowid'  );

insert into execution_plan_operation (name_operation, name_option) values ('transpose'               ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('union'                   ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('unpivot'                 ,  null                   );
insert into execution_plan_operation (name_operation, name_option) values ('view'                    ,  null                   );
