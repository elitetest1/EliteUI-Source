.class public Landroid/security/identity/AccessControlProfileId;
.super Ljava/lang/Object;
.source "AccessControlProfileId.java"


# instance fields
.field private blacklist mId:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    return-void
.end method


# virtual methods
.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/security/identity/AccessControlProfileId;->mId:I

    return p0
.end method
