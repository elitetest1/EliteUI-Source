.class public Landroid/telephony/CbGeoUtils$LatLng;
.super Ljava/lang/Object;
.source "CbGeoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CbGeoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LatLng"
.end annotation


# instance fields
.field public final whitelist lat:D

.field public final whitelist lng:D


# direct methods
.method public constructor whitelist <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iput-wide p3, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    return-void
.end method


# virtual methods
.method public whitelist distance(Landroid/telephony/CbGeoUtils$LatLng;)D
    .locals 8

    iget-wide v0, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-wide v2, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v4, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-wide v6, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v0

    mul-double/2addr v2, v2

    iget-wide v4, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget-wide p0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, v0

    const-wide v0, 0x41584dae00000000L    # 6371000.0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CbGeoUtils$LatLng;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-wide v5, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-wide p0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    cmpl-double p0, v3, p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist subtract(Landroid/telephony/CbGeoUtils$LatLng;)Landroid/telephony/CbGeoUtils$LatLng;
    .locals 5

    new-instance v0, Landroid/telephony/CbGeoUtils$LatLng;

    iget-wide v1, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    iget-wide v3, p1, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    sub-double/2addr v1, v3

    iget-wide v3, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    iget-wide p0, p1, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    sub-double/2addr v3, p0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/CbGeoUtils$LatLng;-><init>(DD)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroid/telephony/CbGeoUtils$LatLng;->lat:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/telephony/CbGeoUtils$LatLng;->lng:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
