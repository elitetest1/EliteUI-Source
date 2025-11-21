.class public interface abstract Lcom/samsung/vekit/Listener/ExportStatusListener;
.super Ljava/lang/Object;
.source "ExportStatusListener.java"

# interfaces
.implements Lcom/samsung/vekit/Listener/NativeInterfaceListener;


# virtual methods
.method public abstract blacklist onCodecReclaim(J)V
.end method

.method public abstract blacklist onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V
.end method

.method public abstract blacklist onExportCompleted()V
.end method

.method public abstract blacklist onExportPaused()V
.end method

.method public abstract blacklist onExportStarted()V
.end method
