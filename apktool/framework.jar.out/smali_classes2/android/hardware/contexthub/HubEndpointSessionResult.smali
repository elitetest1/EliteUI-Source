.class public Landroid/hardware/contexthub/HubEndpointSessionResult;
.super Ljava/lang/Object;
.source "HubEndpointSessionResult.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mAccepted:Z

.field private final blacklist mReason:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mAccepted:Z

    iput-object p2, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mReason:Ljava/lang/String;

    return-void
.end method

.method public static whitelist accept()Landroid/hardware/contexthub/HubEndpointSessionResult;
    .locals 3

    new-instance v0, Landroid/hardware/contexthub/HubEndpointSessionResult;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/hardware/contexthub/HubEndpointSessionResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static whitelist reject(Ljava/lang/String;)Landroid/hardware/contexthub/HubEndpointSessionResult;
    .locals 2

    new-instance v0, Landroid/hardware/contexthub/HubEndpointSessionResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/contexthub/HubEndpointSessionResult;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public whitelist getReason()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mReason:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist isAccepted()Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/contexthub/HubEndpointSessionResult;->mAccepted:Z

    return p0
.end method
