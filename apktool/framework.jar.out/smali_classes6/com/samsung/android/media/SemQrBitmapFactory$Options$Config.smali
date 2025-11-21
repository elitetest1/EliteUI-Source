.class public Lcom/samsung/android/media/SemQrBitmapFactory$Options$Config;
.super Ljava/lang/Object;
.source "SemQrBitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemQrBitmapFactory$Options;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# static fields
.field public static final blacklist ARGB_8888:I = 0x7

.field public static final blacklist NV12:I = 0x13

.field public static final blacklist NV21:I = 0x12

.field public static final blacklist RGB_565:I = 0x0

.field public static final blacklist RGB_888:I = 0x1

.field public static final blacklist YUV_420:I = 0x2

.field public static final blacklist YUV_422_H1V2:I = 0xe

.field public static final blacklist YUV_422_H2V1:I = 0x3

.field public static final blacklist YUV_444:I = 0xf

.field public static final blacklist YUYV:I = 0x11


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/media/SemQrBitmapFactory$Options;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
