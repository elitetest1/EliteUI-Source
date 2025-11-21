.class public Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationPolicy.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemEAPolicy"

.field private static blacklist mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemEAPolicy"

    const-string v1, "SemEnhancedAttestationPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->getEaPolicy()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    return-void
.end method

.method private blacklist getEaPolicy()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .locals 2

    const-string v0, "SemEAPolicy"

    const-string v1, "getEaPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
    .locals 3

    const-class v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    const-string v1, "SemEAPolicy"

    const-string v2, "getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "SemEAPolicy"

    const-string v2, "getInstance: Context null"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "SemEAPolicy"

    const-string v2, "getInstance: not supported"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    :cond_2
    sget-object p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static declared-synchronized whitelist isSupported(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    const-string v1, "SemEAPolicy"

    const-string v2, "isSupported: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    const-string p0, "SemEAPolicy"

    const-string v1, "isSupported: Context null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSupported()Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public whitelist attest(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "SemEAPolicy"

    const-string v1, "attest on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-virtual {p2}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->getEnhancedAttestationPolicyCallback()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V

    return-void
.end method

.method public whitelist attest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V
    .locals 2

    const-string v0, "SemEAPolicy"

    const-string v1, "attest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-virtual {p3}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->getEnhancedAttestationPolicyCallback()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V

    return-void
.end method
