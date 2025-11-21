.class public final Landroid/security/identity/AuthenticationKeyMetadata;
.super Ljava/lang/Object;
.source "AuthenticationKeyMetadata.java"


# instance fields
.field private blacklist mExpirationDate:Ljava/time/Instant;

.field private blacklist mUsageCount:I


# direct methods
.method constructor blacklist <init>(ILjava/time/Instant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mUsageCount:I

    iput-object p2, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mExpirationDate:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public whitelist getExpirationDate()Ljava/time/Instant;
    .locals 0

    iget-object p0, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mExpirationDate:Ljava/time/Instant;

    return-object p0
.end method

.method public whitelist getUsageCount()I
    .locals 0

    iget p0, p0, Landroid/security/identity/AuthenticationKeyMetadata;->mUsageCount:I

    return p0
.end method
