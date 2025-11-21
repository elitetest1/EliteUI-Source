.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;
.super Ljava/lang/Object;
.source "SprTimeInterpolatorFactory.java"


# static fields
.field private static blacklist mTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(IIII)Landroid/animation/TimeInterpolator;
    .locals 2

    sget-object p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    sput-object p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    :cond_0
    sget-object p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    sub-int v0, p1, p3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;

    if-nez p0, :cond_1

    new-instance p0, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolator;-><init>(III)V

    sget-object p1, Lcom/samsung/android/graphics/spr/animation/interpolator/SprTimeInterpolatorFactory;->mTable:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method
