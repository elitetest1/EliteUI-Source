.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "KeyStoreParameter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/security/KeyStoreParameter;
    .locals 2

    new-instance p0, Landroid/security/KeyStoreParameter;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter-IA;)V

    return-object p0
.end method

.method public whitelist setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 0

    return-object p0
.end method
