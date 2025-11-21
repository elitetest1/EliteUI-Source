.class public Landroid/telephony/CbGeoUtils$Polygon;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"

# interfaces
.implements Landroid/telephony/CbGeoUtils$Geometry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Polygon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Polygon$Point;
    }
.end annotation


# static fields
.field private static final blacklist SCALE:D = 1000.0


# instance fields
.field private final blacklist mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

.field private final blacklist mScaledVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Polygon$Point;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVertices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$lGZ1xFBE-5bi5sas7dayvOLy8kc(Landroid/telephony/CbGeoUtils$Polygon;Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p0

    return-object p0
.end method

.method public constructor whitelist <init>(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CbGeoUtils$LatLng;

    iput-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/telephony/CbGeoUtils$Polygon$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/CbGeoUtils$Polygon;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    return-void
.end method

.method private blacklist convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .locals 10

    iget-wide v0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-object v2, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v2, v2, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v0, v2

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v2, v4

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    iget-wide v5, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v5, v6}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v4, v4, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v4

    const-wide v8, 0x4076800000000000L    # 360.0

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mOrigin:Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide p0, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-static {p0, p1}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result p0

    int-to-double p0, p0

    sub-double/2addr v8, v4

    mul-double v2, p0, v8

    :cond_0
    new-instance p0, Landroid/telephony/CbGeoUtils$Polygon$Point;

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v4

    mul-double/2addr v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/telephony/CbGeoUtils$Polygon$Point;-><init>(DD)V

    return-object p0
.end method

.method private static blacklist crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D
    .locals 4

    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide p0, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    mul-double/2addr v2, p0

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist contains(Landroid/telephony/CbGeoUtils$LatLng;)Z
    .locals 13

    invoke-direct {p0, p1}, Landroid/telephony/CbGeoUtils$Polygon;->convertAndScaleLatLng(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object p1

    iget-object v0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    iget-object v5, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/CbGeoUtils$Polygon$Point;

    iget-object v6, p0, Landroid/telephony/CbGeoUtils$Polygon;->mScaledVertices:Ljava/util/List;

    add-int/lit8 v2, v2, 0x1

    rem-int v7, v2, v0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CbGeoUtils$Polygon$Point;

    invoke-virtual {v6, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v7

    invoke-virtual {p1, v5}, Landroid/telephony/CbGeoUtils$Polygon$Point;->subtract(Landroid/telephony/CbGeoUtils$Polygon$Point;)Landroid/telephony/CbGeoUtils$Polygon$Point;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils$Polygon;->crossProduct(Landroid/telephony/CbGeoUtils$Polygon$Point;Landroid/telephony/CbGeoUtils$Polygon$Point;)D

    move-result-wide v7

    invoke-static {v7, v8}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v7

    if-nez v7, :cond_1

    iget-wide v7, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v9, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v9, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    iget-wide v7, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v9, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    iget-wide v11, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->x:D

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    iget-wide v7, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v9, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iget-wide v9, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    iget-wide v7, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v9, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v5, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    cmpg-double v5, v7, v5

    if-gtz v5, :cond_0

    return v4

    :cond_1
    iget-wide v4, v5, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v8, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_2

    if-lez v7, :cond_0

    iget-wide v4, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-lez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-gez v7, :cond_0

    iget-wide v4, v6, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$Polygon$Point;->y:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Landroid/telephony/CbGeoUtils;->sign(D)I

    move-result v4

    if-gtz v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_3
    if-eqz v3, :cond_4

    return v4

    :cond_4
    return v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$Polygon;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/CbGeoUtils$Polygon;

    iget-object v1, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v3, p1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CbGeoUtils$LatLng;

    iget-object v4, p1, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public whitelist getVertices()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$LatLng;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const-string v1, "Polygon: "

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/CbGeoUtils$Polygon;->mVertices:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method
