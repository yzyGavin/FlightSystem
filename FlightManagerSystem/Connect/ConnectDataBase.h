#ifndef _CONNECT_DATABASE_H
#define _CONNECT_DATABASE_H

#include <QtSql>
#include <QSqlQuery>
#include <QSqlError>
#include <QtSql/QSqlDatabase>

//使用单例模式
class ConnectDataBase
{
public:
    static ConnectDataBase* GetInstance()
    {
        return _instance;
    }

    bool OpenDataBase();
    bool SelectResult(QSqlQuery* sqlquery, const QString& sql);
    QString InsertValue(const QString& table, const int& num, QVector<QString>& values);
    QString UpdateValue(QVector<QString>& sql);
    QString DeletValue(const QString& sql);
    int CallPro(const QString& sql);

private:
    //销毁对象
    class GC
    {
    public:
        ~GC()
        {
            if (!_instance)
            {
                delete _instance;
                _instance = NULL;
            }
        }
    };
    static GC gc;

    ConnectDataBase();

    static ConnectDataBase* _instance;
    QSqlDatabase _dataBase;
};

#endif // CONNECTDATABASE_H
