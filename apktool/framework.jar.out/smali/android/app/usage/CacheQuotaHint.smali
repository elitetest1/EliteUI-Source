.class public final Landroid/app/usage/CacheQuotaHint;
.super Ljava/lang/Object;
.source "CacheQuotaHint.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/CacheQuotaHint$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist QUOTA_NOT_SET:J = -0x1L


# instance fields
.field private final greylist-max-o mQuota:J

.field private final greylist-max-o mUid:I

.field private final greylist-max-o mUsageStats:Landroid/app/usage/UsageStats;

.field private final greylist-max-o mUuid:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/usage/CacheQuotaHint$1;

    invoke-direct {v0}, Landroid/app/usage/CacheQuotaHint$1;-><init>()V

    sput-object v0, Landroid/app/usage/CacheQuotaHint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/usage/CacheQuotaHint$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUuid(Landroid/app/usage/CacheQuotaHint$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUid(Landroid/app/usage/CacheQuotaHint$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmUsageStats(Landroid/app/usage/CacheQuotaHint$Builder;)Landroid/app/usage/UsageStats;

    move-result-object v0

    iput-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    invoke-static {p1}, Landroid/app/usage/CacheQuotaHint$Builder;->-$$Nest$fgetmQuota(Landroid/app/usage/CacheQuotaHint$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Landroid/app/usage/CacheQuotaHint;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/usage/CacheQuotaHint;

    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    iget-object v2, p1, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    iget v2, p1, Landroid/app/usage/CacheQuotaHint;->mUid:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    iget-wide p0, p1, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    return-wide v0
.end method

.method public whitelist getUid()I
    .locals 0

    iget p0, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    return p0
.end method

.method public whitelist getUsageStats()Landroid/app/usage/UsageStats;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    return-object p0
.end method

.method public whitelist getVolumeUuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    iget v1, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    iget-wide v3, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/app/usage/CacheQuotaHint;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/usage/CacheQuotaHint;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/usage/CacheQuotaHint;->mQuota:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Landroid/app/usage/CacheQuotaHint;->mUsageStats:Landroid/app/usage/UsageStats;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
