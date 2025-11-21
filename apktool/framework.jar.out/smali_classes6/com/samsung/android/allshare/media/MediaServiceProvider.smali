.class public abstract Lcom/samsung/android/allshare/media/MediaServiceProvider;
.super Lcom/samsung/android/allshare/ServiceProvider;
.source "MediaServiceProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/allshare/ServiceProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getDeviceFinder()Lcom/samsung/android/allshare/DeviceFinder;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p0

    return-object p0
.end method

.method public abstract getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;
.end method
