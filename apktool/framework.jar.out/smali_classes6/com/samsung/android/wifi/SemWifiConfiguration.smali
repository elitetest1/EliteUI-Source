.class public Lcom/samsung/android/wifi/SemWifiConfiguration;
.super Ljava/lang/Object;
.source "SemWifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemWifiConfiguration$SemNetworkDisableReason;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemWifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DISABLED_ASSOCIATION_REJECTED:I = 0x3

.field public static final blacklist DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR:I = 0xb

.field public static final blacklist DISABLED_AUTHENTICATION_FAILURE:I = 0x2

.field public static final blacklist DISABLED_AUTHENTICATION_UMTS_AUTN_ERROR:I = 0xc

.field public static final blacklist DISABLED_CAPTIVE_PORTAL:I = 0x5

.field public static final blacklist DISABLED_DHCP_FAILED:I = 0x4

.field public static final blacklist DISABLED_NONE:I = 0x0

.field public static final blacklist DISABLED_PERMANENTLY_NO_INTERNET:I = 0x7

.field public static final blacklist DISABLED_PERMANENTLY_NO_INTERNET_INITIAL:I = 0x8

.field public static final blacklist DISABLED_REASON_MAX:I = 0xd

.field public static final blacklist DISABLED_SUSPICIOUS_NETWORK:I = 0x1

.field public static final blacklist DISABLED_TEMPORARY_ELE_DETECTION:I = 0x9

.field public static final blacklist DISABLED_TEMPORARY_NO_INTERNET:I = 0x6

.field public static final blacklist DISABLED_TEMPORARY_SILENT_ROAMING:I = 0xa

.field public static final blacklist PERSONALIZED_CONN_BTM_SHIFT_VALUE:I = 0x0

.field public static final blacklist PERSONALIZED_CONN_OPTION_BITMASK:I = 0xf

.field public static final blacklist PERSONALIZED_CONN_OPTION_DEFAULT:I = 0x0

.field public static final blacklist PERSONALIZED_CONN_OPTION_DETECTED_BIGDATA:I = 0x1

.field public static final blacklist PERSONALIZED_CONN_OPTION_ENABLED:I = 0x3

.field public static final blacklist PERSONALIZED_CONN_OPTION_ENABLED_BIGDATA:I = 0x2

.field public static final blacklist PERSONALIZED_CONN_OPTION_USER_DISABLED:I = 0x4

.field public static final blacklist networkDisableReasonStrings:[Ljava/lang/String;


# instance fields
.field public blacklist altNetworkTargetRssi:I

.field public blacklist configKey:Ljava/lang/String;

.field public blacklist creationTime:J

.field public blacklist disableTimeByEle:J

.field public blacklist disableTimeByWcm:J

.field public blacklist isCaptivePortal:Z

.field public blacklist isLockDown:Z

.field public blacklist isNoInternetAccessExpected:Z

.field public blacklist networkDisableReason:I

.field public blacklist networkScore:I

.field public blacklist personalizedConnectionOption:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    const-string v11, "DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    const-string v12, "DISABLED_AUTHENTICATION_UMTS_AUTN_ERROR"

    const-string v0, "DISABLED_NONE"

    const-string v1, "DISABLED_SUSPICIOUS_NETWORK"

    const-string v2, "DISABLED_AUTHENTICATION_FAILURE"

    const-string v3, "DISABLED_ASSOCIATION_REJECTED"

    const-string v4, "DISABLED_DHCP_FAILED"

    const-string v5, "DISABLED_CAPTIVE_PORTAL"

    const-string v6, "DISABLED_TEMPORARY_NO_INTERNET"

    const-string v7, "DISABLED_PERMANENTLY_NO_INTERNET"

    const-string v8, "DISABLED_PERMANENTLY_NO_INTERNET_INITIAL"

    const-string v9, "DISABLED_TEMPORARY_ELE_DETECTION"

    const-string v10, "DISABLED_TEMPORARY_SILENT_ROAMING"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/wifi/SemWifiConfiguration$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemWifiConfiguration$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iput-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iget v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iput v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget-wide v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    iget p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    iput p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iput-boolean p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    iput p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    iput p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iput-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    iput p1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    iget v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    iget-boolean v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    iget-boolean v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eq v0, v2, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    iget v2, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq v0, v2, :cond_4

    return v1

    :cond_4
    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-ne p0, p1, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v1
.end method

.method public blacklist getNetworkScore()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist isCaptivePortal()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    return p0
.end method

.method public blacklist isLockDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    return p0
.end method

.method public blacklist isNoInternetAccessExpected()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    return p0
.end method

.method public blacklist matches(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-eqz v2, :cond_0

    const-string v2, " locked"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz v2, :cond_1

    const-string v2, " captivePortal\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    if-eqz v2, :cond_2

    const-string v2, " NoInternetAccessExpected\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ltz v2, :cond_5

    const/16 v3, 0xd

    if-ge v2, v3, :cond_5

    const-string v2, " disableReason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReasonStrings:[Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const-string v2, " disableTimeByWcm: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    const-string v2, " disableTimeByEle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_4
    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    if-eqz v2, :cond_5

    const-string v2, " altNetworkTargetRssi: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_5
    const-string v2, " networkScore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n cTime: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n personalizedConnectionOption: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkScore:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isNoInternetAccessExpected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->altNetworkTargetRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->creationTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget p0, p0, Lcom/samsung/android/wifi/SemWifiConfiguration;->personalizedConnectionOption:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
