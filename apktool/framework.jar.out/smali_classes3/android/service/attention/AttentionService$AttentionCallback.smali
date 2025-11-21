.class public final Landroid/service/attention/AttentionService$AttentionCallback;
.super Ljava/lang/Object;
.source "AttentionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/attention/AttentionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AttentionCallback"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/service/attention/IAttentionCallback;


# direct methods
.method private constructor blacklist <init>(Landroid/service/attention/IAttentionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/attention/IAttentionCallback;Landroid/service/attention/AttentionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/attention/AttentionService$AttentionCallback;-><init>(Landroid/service/attention/IAttentionCallback;)V

    return-void
.end method


# virtual methods
.method public whitelist onFailure(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    invoke-interface {p0, p1}, Landroid/service/attention/IAttentionCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method

.method public whitelist onSuccess(IJ)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/service/attention/AttentionService$AttentionCallback;->mCallback:Landroid/service/attention/IAttentionCallback;

    invoke-interface {p0, p1, p2, p3}, Landroid/service/attention/IAttentionCallback;->onSuccess(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    return-void
.end method
