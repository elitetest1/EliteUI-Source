.class public final Landroid/telecom/StreamingCallAdapter;
.super Ljava/lang/Object;
.source "StreamingCallAdapter.java"


# instance fields
.field private final blacklist mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telecom/IStreamingCallAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/StreamingCallAdapter;->mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;

    return-void
.end method


# virtual methods
.method public blacklist setStreamingState(I)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/telecom/StreamingCallAdapter;->mAdapter:Lcom/android/internal/telecom/IStreamingCallAdapter;

    invoke-interface {p0, p1}, Lcom/android/internal/telecom/IStreamingCallAdapter;->setStreamingState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
