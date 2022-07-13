#include "backend.h"

#include <QDateTime>

Backend::Backend(QObject *parent) : QObject(parent)
{
    m_dateString = QDateTime::currentDateTime().toString();
    m_timer.setInterval(500);
    connect(&m_timer, &QTimer::timeout, this, &Backend::syncDateTime);
    m_timer.start();

}

QString Backend::dateString()
{
    return m_dateString;
}

void Backend::syncDateTime()
{
    m_dateString = QDateTime::currentDateTime().toString();
    emit dateStringChanged();
}
