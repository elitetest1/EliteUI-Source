.class public final Landroid/telephony/AccessNetworkConstants;
.super Ljava/lang/Object;
.source "AccessNetworkConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/AccessNetworkConstants$NgranArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$NgranBands;,
        Landroid/telephony/AccessNetworkConstants$CdmaBands;,
        Landroid/telephony/AccessNetworkConstants$EutranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$EutranBand;,
        Landroid/telephony/AccessNetworkConstants$UtranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$UtranBand;,
        Landroid/telephony/AccessNetworkConstants$GeranBandArfcnFrequency;,
        Landroid/telephony/AccessNetworkConstants$GeranBand;,
        Landroid/telephony/AccessNetworkConstants$AccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$RadioAccessNetworkType;,
        Landroid/telephony/AccessNetworkConstants$TransportType;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AccessNetworkConstants"

.field public static final whitelist TRANSPORT_TYPE_INVALID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TRANSPORT_TYPE_WLAN:I = 0x2

.field public static final whitelist TRANSPORT_TYPE_WWAN:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist transportTypeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "WLAN"

    return-object p0

    :cond_1
    const-string p0, "WWAN"

    return-object p0

    :cond_2
    const-string p0, "INVALID"

    return-object p0
.end method
