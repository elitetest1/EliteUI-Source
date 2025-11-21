.class public Landroid/os/TelephonyServiceManager;
.super Ljava/lang/Object;
.source "TelephonyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TelephonyServiceManager$ServiceRegisterer;,
        Landroid/os/TelephonyServiceManager$ServiceNotFoundException;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getCarrierConfigServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "carrier_config"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getEuiccCardControllerServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "euicc_card_controller"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getEuiccControllerService()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "econtroller"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getIccPhoneBookServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "simphonebook"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getOpportunisticNetworkServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "ions"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "iphonesubinfo"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getSmsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "isms"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getSubscriptionServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "isub"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getTelephonyImsServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "telephony_ims"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getTelephonyRcsMessageServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string v0, "ircsmessage"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;
    .locals 1

    new-instance p0, Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    const-string/jumbo v0, "phone"

    invoke-direct {p0, v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
