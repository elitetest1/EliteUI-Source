.class public final Lcom/android/internal/widget/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getSpanIndex(II)I
    .locals 0

    rem-int/2addr p1, p2

    return p1
.end method

.method public blacklist getSpanSize(I)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
