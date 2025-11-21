.class public final Landroid/companion/WifiDeviceFilter$Builder;
.super Ljava/lang/Object;
.source "WifiDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/WifiDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBssid:Landroid/net/MacAddress;

.field private blacklist mBssidMask:Landroid/net/MacAddress;

.field private blacklist mBuilderFieldsSet:J

.field private greylist-max-o mNamePattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/companion/WifiDeviceFilter;
    .locals 8

    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    :cond_0
    const-wide/16 v6, 0x2

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-nez v2, :cond_1

    iput-object v3, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    :cond_1
    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    sget-object v0, Landroid/net/MacAddress;->BROADCAST_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    :cond_2
    new-instance v0, Landroid/companion/WifiDeviceFilter;

    iget-object v1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    iget-object p0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    invoke-direct {v0, v1, v2, p0}, Landroid/companion/WifiDeviceFilter;-><init>(Ljava/util/regex/Pattern;Landroid/net/MacAddress;Landroid/net/MacAddress;)V

    return-object v0
.end method

.method public whitelist setBssid(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method public whitelist setBssidMask(Landroid/net/MacAddress;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBssidMask:Landroid/net/MacAddress;

    return-object p0
.end method

.method public whitelist setNamePattern(Ljava/util/regex/Pattern;)Landroid/companion/WifiDeviceFilter$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/companion/WifiDeviceFilter$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/companion/WifiDeviceFilter$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/companion/WifiDeviceFilter$Builder;->mNamePattern:Ljava/util/regex/Pattern;

    return-object p0
.end method
