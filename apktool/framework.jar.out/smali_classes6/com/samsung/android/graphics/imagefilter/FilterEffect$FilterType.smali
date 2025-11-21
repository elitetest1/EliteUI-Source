.class public Lcom/samsung/android/graphics/imagefilter/FilterEffect$FilterType;
.super Ljava/lang/Object;
.source "FilterEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/FilterEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterType"
.end annotation


# static fields
.field public static final blacklist BLUR:I = 0x1

.field public static final blacklist CURVE:I = 0x2

.field public static final blacklist DITHER:I = 0x4

.field public static final blacklist PROSATURATION:I = 0x8

.field public static final blacklist SATURATION:I = 0x10


# instance fields
.field private final blacklist filterMask:I


# direct methods
.method constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/FilterEffect$FilterType;->filterMask:I

    return-void
.end method


# virtual methods
.method public blacklist getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/FilterEffect$FilterType;->filterMask:I

    return p0
.end method
