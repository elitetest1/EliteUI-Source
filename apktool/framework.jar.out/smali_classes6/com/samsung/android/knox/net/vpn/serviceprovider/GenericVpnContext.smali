.class public Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;
.super Landroid/content/ContextWrapper;
.source "GenericVpnContext.java"


# static fields
.field public static final greylist CONNECTING:Z = true

.field public static final greylist DISCONNECTING:Z = false

.field public static final greylist META_DISABLED:Z = false

.field public static final greylist META_ENABLED:Z = true

.field public static final greylist PER_APP_VPN:Z = false

.field public static final greylist SYSTEM_VPN:Z = true

.field private static greylist TAG:Ljava/lang/String; = "GenericVpnContext"


# instance fields
.field private greylist mEnableMetaHeader:Z

.field private greylist mIsConnecting:Z

.field private greylist mProfile:Ljava/lang/String;


# direct methods
.method static constructor greylist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method


# virtual methods
.method public greylist enableMetaData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return-void
.end method

.method public greylist getVPNProfile()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    return-object p0
.end method

.method public greylist getVPNState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return p0
.end method

.method public greylist isMetaEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mEnableMetaHeader:Z

    return p0
.end method

.method public greylist setGenericVpnParams(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mProfile:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/knox/net/vpn/serviceprovider/GenericVpnContext;->mIsConnecting:Z

    return-void
.end method
