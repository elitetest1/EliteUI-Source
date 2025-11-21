.class public Lcom/samsung/android/motionphoto/core/MPSplitter;
.super Ljava/lang/Object;
.source "MPSplitter.java"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string/jumbo v0, "secmm.sum.junit-test"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const-string/jumbo v0, "motionphoto_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native blacklist native_reserve_xmp_on_heic(Ljava/io/FileDescriptor;I)J
.end method

.method private native blacklist native_split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public blacklist reserveXMPOnHeic(Ljava/io/FileDescriptor;I)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/motionphoto/core/MPSplitter;->native_reserve_xmp_on_heic(Ljava/io/FileDescriptor;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public blacklist split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/motionphoto/core/MPSplitter;->native_split(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
