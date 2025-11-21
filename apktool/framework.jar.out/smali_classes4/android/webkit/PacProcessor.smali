.class public interface abstract Landroid/webkit/PacProcessor;
.super Ljava/lang/Object;
.source "PacProcessor.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public static whitelist createInstance()Landroid/webkit/PacProcessor;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->createPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance()Landroid/webkit/PacProcessor;
    .locals 1

    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getPacProcessor()Landroid/webkit/PacProcessor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract whitelist findProxyForUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist release()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setNetwork(Landroid/net/Network;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist setProxyScript(Ljava/lang/String;)Z
.end method
