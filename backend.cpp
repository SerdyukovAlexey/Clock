#include "backend.h"

#include <QDate>

Backend::Backend(QObject *parent) : QObject(parent)
{
    m_dateString = QDate::currentDate().toString();

}

QString Backend::dateString()
{
    return m_dateString;
}
