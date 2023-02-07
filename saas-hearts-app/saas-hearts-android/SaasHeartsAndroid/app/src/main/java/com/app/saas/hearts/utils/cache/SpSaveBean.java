package com.app.saas.hearts.utils.cache;

import java.io.Serializable;

/**
 * 项 目 名: basic基础 <br/>
 * 修 改 人: 高强<br/>
 * 修改时间:2019/10/10<br/>
 * 功能描述:sp存储bean<br/>
 */
 class SpSaveBean<T> implements Serializable {
    private int saveTime;//存储时间（单位秒）
    private T value;
    private long currentTime;//存储数据时的时间（当前时间戳，单位毫秒）
    private boolean timeEffictive;//时间有效可用

    public SpSaveBean() {
    }

    public SpSaveBean(int saveTime, T value, boolean timeEffictive) {
        this.saveTime = saveTime;
        this.value = value;
        this.timeEffictive = timeEffictive;
        this.currentTime = System.currentTimeMillis();
    }

    public boolean isTimeEffictive() {
        return timeEffictive;
    }

    public void setTimeEffictive(boolean timeEffictive) {
        this.timeEffictive = timeEffictive;
    }

    public long getCurrentTime() {
        return currentTime;
    }

    public void setCurrentTime(long currentTime) {
        this.currentTime = currentTime;
    }

    public int getSaveTime() {
        return saveTime;
    }

    public void setSaveTime(int saveTime) {
        this.saveTime = saveTime;
    }

    public T getValue() {
        return value;
    }

    public void setValue(T value) {
        this.value = value;
    }
}
