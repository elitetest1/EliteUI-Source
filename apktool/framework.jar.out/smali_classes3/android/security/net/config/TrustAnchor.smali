.class public final Landroid/security/net/config/TrustAnchor;
.super Ljava/lang/Object;
.source "TrustAnchor.java"


# instance fields
.field public final greylist-max-o certificate:Ljava/security/cert/X509Certificate;

.field public final greylist-max-o overridesPins:Z


# direct methods
.method public constructor greylist-max-o <init>(Ljava/security/cert/X509Certificate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    iput-boolean p2, p0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "certificate"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
