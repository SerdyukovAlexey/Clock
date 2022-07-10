#ifndef BACKEND_H
#define BACKEND_H

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString dateString READ dateString NOTIFY dateStringChanged)
public:
    explicit Backend(QObject *parent = nullptr);

    QString dateString();

signals:
    void dateStringChanged();

private: // class members
    bool m_darkMode= true;
    QString m_dateString;
};

#endif // BACKEND_H
