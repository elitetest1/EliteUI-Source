.class public Lcom/samsung/android/location/SemBleScanGeofence;
.super Ljava/lang/Object;
.source "SemBleScanGeofence.java"


# instance fields
.field private final blacklist mAddress:[Ljava/lang/String;

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private final blacklist mRequestId:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x4069000000000000L    # 200.0

    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    iput-object p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    return-void
.end method

.method private blacklist isLatLonValid(DD)Z
    .locals 3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double p4, v0, p0

    const/4 v0, 0x0

    if-gez p4, :cond_0

    return v0

    :cond_0
    const-wide v1, 0x4066800000000000L    # 180.0

    cmpg-double p4, v1, p2

    if-gez p4, :cond_1

    return v0

    :cond_1
    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double p0, p0, v1

    if-gez p0, :cond_3

    cmpg-double p0, p2, v1

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public blacklist getAddress()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mAddress:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getLatitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    return-wide v0
.end method

.method public blacklist getLongitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    return-wide v0
.end method

.method public blacklist getRequestId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mRequestId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setGeopoint(DD)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/location/SemBleScanGeofence;->isLatLonValid(DD)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLatitude:D

    iput-wide p3, p0, Lcom/samsung/android/location/SemBleScanGeofence;->mLongitude:D

    const/4 p0, 0x1

    return p0
.end method
