.class Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;
.super Ljava/lang/Object;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Point"
.end annotation


# instance fields
.field blacklist x:F

.field blacklist y:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->x:F

    iput p2, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$Point;->y:F

    return-void
.end method
