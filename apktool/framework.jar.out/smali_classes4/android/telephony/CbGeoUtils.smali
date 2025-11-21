.class public Landroid/telephony/CbGeoUtils;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CbGeoUtils$Circle;,
        Landroid/telephony/CbGeoUtils$LatLng;,
        Landroid/telephony/CbGeoUtils$Polygon;,
        Landroid/telephony/CbGeoUtils$Geometry;
    }
.end annotation


# static fields
.field private static final blacklist CIRCLE_SYMBOL:Ljava/lang/String; = "circle"

.field public static final blacklist EARTH_RADIUS_METER:I = 0x6136b8

.field public static final blacklist EPS:D = 1.0E-7

.field public static final blacklist GEOMETRY_TYPE_CIRCLE:I = 0x3

.field public static final blacklist GEOMETRY_TYPE_POLYGON:I = 0x2

.field public static final blacklist GEO_FENCING_MAXIMUM_WAIT_TIME:I = 0x1

.field private static final blacklist POLYGON_SYMBOL:Ljava/lang/String; = "polygon"

.field private static final blacklist TAG:Ljava/lang/String; = "CbGeoUtils"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist encodeGeometriesToString(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/telephony/CbGeoUtils$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ";"

    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method private static blacklist encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Polygon;

    const-string/jumbo v2, "|"

    const-string v3, ","

    if-eqz v1, :cond_0

    const-string/jumbo v1, "polygon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Polygon;->getVertices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CbGeoUtils$LatLng;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/telephony/CbGeoUtils$Circle;

    if-eqz v1, :cond_2

    const-string v1, "circle|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Landroid/telephony/CbGeoUtils$Circle;

    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v1

    iget-wide v4, v1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getCenter()Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v1

    iget-wide v3, v1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/CbGeoUtils$Circle;->getRadius()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported geometry object "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CbGeoUtils"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$0(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/telephony/CbGeoUtils;->encodeGeometryToString(Landroid/telephony/CbGeoUtils$Geometry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$encodeGeometriesToString$1(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist parseGeometriesFromString(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CbGeoUtils$Geometry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "\\s*;\\s*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    const-string v5, "\\s*\\|\\s*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const-string v7, "circle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_2

    const-string/jumbo v7, "polygon"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid geometry format "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CbGeoUtils"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v5

    sub-int/2addr v6, v8

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    array-length v6, v5

    if-ge v8, v6, :cond_1

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    new-instance v5, Landroid/telephony/CbGeoUtils$Polygon;

    invoke-direct {v5, v4}, Landroid/telephony/CbGeoUtils$Polygon;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    new-instance v4, Landroid/telephony/CbGeoUtils$Circle;

    aget-object v6, v5, v8

    invoke-static {v6}, Landroid/telephony/CbGeoUtils;->parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v5, v5, v7

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-direct {v4, v6, v7, v8}, Landroid/telephony/CbGeoUtils$Circle;-><init>(Landroid/telephony/CbGeoUtils$LatLng;D)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static blacklist parseLatLngFromString(Ljava/lang/String;)Landroid/telephony/CbGeoUtils$LatLng;
    .locals 5

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/telephony/CbGeoUtils$LatLng;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const/4 v3, 0x1

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v0
.end method

.method public static blacklist sign(D)I
    .locals 2

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide v0, -0x4185280d654350b8L    # -1.0E-7

    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
