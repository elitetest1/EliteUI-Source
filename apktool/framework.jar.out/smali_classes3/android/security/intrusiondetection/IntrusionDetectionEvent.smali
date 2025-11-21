.class public final Landroid/security/intrusiondetection/IntrusionDetectionEvent;
.super Ljava/lang/Object;
.source "IntrusionDetectionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IntrusionDetectionEvent$EventType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/intrusiondetection/IntrusionDetectionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NETWORK_EVENT_CONNECT:I = 0x2

.field public static final whitelist NETWORK_EVENT_DNS:I = 0x1

.field public static final whitelist SECURITY_EVENT:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "IntrusionDetectionEvent"


# instance fields
.field private final blacklist mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

.field private final blacklist mNetworkEventDns:Landroid/app/admin/DnsEvent;

.field private final blacklist mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

.field private final blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent$1;

    invoke-direct {v0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent$1;-><init>()V

    sput-object v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/ConnectEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/DnsEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/admin/SecurityLog$SecurityEvent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/app/admin/ConnectEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/ConnectEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Invalid event type: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object v0, Landroid/app/admin/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DnsEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-void

    :cond_2
    sget-object v0, Landroid/app/admin/SecurityLog$SecurityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object p1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    iput-object v1, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/security/intrusiondetection/IntrusionDetectionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist createForConnectEvent(Landroid/app/admin/ConnectEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 1

    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/ConnectEvent;)V

    return-object v0
.end method

.method public static whitelist createForDnsEvent(Landroid/app/admin/DnsEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 1

    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/DnsEvent;)V

    return-object v0
.end method

.method public static whitelist createForSecurityEvent(Landroid/app/admin/SecurityLog$SecurityEvent;)Landroid/security/intrusiondetection/IntrusionDetectionEvent;
    .locals 1

    new-instance v0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;

    invoke-direct {v0, p0}, Landroid/security/intrusiondetection/IntrusionDetectionEvent;-><init>(Landroid/app/admin/SecurityLog$SecurityEvent;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getConnectEvent()Landroid/app/admin/ConnectEvent;
    .locals 3

    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event type is not network connect event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDnsEvent()Landroid/app/admin/DnsEvent;
    .locals 3

    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event type is not network DNS event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSecurityEvent()Landroid/app/admin/SecurityLog$SecurityEvent;
    .locals 3

    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Event type is not security event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IntrusionDetectionEvent{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventConnect:Landroid/app/admin/ConnectEvent;

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/ConnectEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid event type: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mNetworkEventDns:Landroid/app/admin/DnsEvent;

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/DnsEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/security/intrusiondetection/IntrusionDetectionEvent;->mSecurityEvent:Landroid/app/admin/SecurityLog$SecurityEvent;

    invoke-virtual {p0, p1, p2}, Landroid/app/admin/SecurityLog$SecurityEvent;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
