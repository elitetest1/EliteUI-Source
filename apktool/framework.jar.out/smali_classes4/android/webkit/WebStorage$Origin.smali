.class public Landroid/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Origin"
.end annotation


# instance fields
.field private greylist-max-o mOrigin:Ljava/lang/String;

.field private greylist-max-o mQuota:J

.field private greylist-max-o mUsage:J


# direct methods
.method protected constructor whitelist <init>(Ljava/lang/String;JJ)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    iput-wide p2, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    iput-wide p4, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-void
.end method


# virtual methods
.method public whitelist getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getQuota()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public whitelist getUsage()J
    .locals 2

    iget-wide v0, p0, Landroid/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
