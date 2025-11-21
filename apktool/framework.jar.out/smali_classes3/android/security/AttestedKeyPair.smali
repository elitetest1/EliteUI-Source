.class public final Landroid/security/AttestedKeyPair;
.super Ljava/lang/Object;
.source "AttestedKeyPair.java"


# instance fields
.field private final blacklist mAttestationRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyPair:Ljava/security/KeyPair;


# direct methods
.method public constructor whitelist <init>(Ljava/security/KeyPair;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyPair;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    iput-object p2, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/KeyPair;[Ljava/security/cert/Certificate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    if-nez p2, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist getAttestationRecord()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/security/AttestedKeyPair;->mAttestationRecord:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getKeyPair()Ljava/security/KeyPair;
    .locals 0

    iget-object p0, p0, Landroid/security/AttestedKeyPair;->mKeyPair:Ljava/security/KeyPair;

    return-object p0
.end method
