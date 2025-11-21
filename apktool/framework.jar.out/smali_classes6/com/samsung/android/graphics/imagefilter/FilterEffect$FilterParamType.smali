.class public Lcom/samsung/android/graphics/imagefilter/FilterEffect$FilterParamType;
.super Ljava/lang/Object;
.source "FilterEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterParamType"
.end annotation


# static fields
.field public static final blacklist PARAM_BLUR_RADIUS:I = 0x0

.field public static final blacklist PARAM_CURVE_LEVEL:I = 0x2

.field public static final blacklist PARAM_CURVE_MAXX:I = 0x3

.field public static final blacklist PARAM_CURVE_MAXY:I = 0x5

.field public static final blacklist PARAM_CURVE_MINX:I = 0x4

.field public static final blacklist PARAM_CURVE_MINY:I = 0x6

.field public static final blacklist PARAM_DITHER_ENABLE:I = 0x7

.field public static final blacklist PARAM_PROSATURATION:I = 0x1

.field public static final blacklist PARAM_SATURATION:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
