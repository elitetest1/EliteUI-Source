.class public interface abstract Landroid/webkit/WebViewFactoryProvider;
.super Ljava/lang/Object;
.source "WebViewFactoryProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactoryProvider$Statics;
    }
.end annotation


# static fields
.field public static final blacklist MINIMUM_SUPPORTED_TARGET_SDK:I = 0x21

.field public static final blacklist MINIMUM_SUPPORTED_VERSION_CODE:J = 0x276ac580L


# direct methods
.method public static blacklist describeCompatibleImplementationPackage()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x276ac580

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Minimum versionCode for OS support: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Minimum targetSdkVersion: %d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getWebViewFactoryClassName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForB"

    return-object v0

    :cond_0
    const-string v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForT"

    return-object v0
.end method

.method public static blacklist isCompatibleImplementationPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 7

    invoke-static {}, Landroid/webkit/Flags;->useBEntryPoint()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v3, p0

    const-wide/32 v5, 0x276ac580

    cmp-long p0, v3, v5

    if-ltz p0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v0, 0x21

    if-lt p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public whitelist createPacProcessor()Landroid/webkit/PacProcessor;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;
.end method

.method public abstract whitelist getCookieManager()Landroid/webkit/CookieManager;
.end method

.method public abstract whitelist getGeolocationPermissions()Landroid/webkit/GeolocationPermissions;
.end method

.method public whitelist getPacProcessor()Landroid/webkit/PacProcessor;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract whitelist getServiceWorkerController()Landroid/webkit/ServiceWorkerController;
.end method

.method public abstract whitelist getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;
.end method

.method public abstract whitelist getTokenBindingService()Landroid/webkit/TokenBindingService;
.end method

.method public abstract whitelist getTracingController()Landroid/webkit/TracingController;
.end method

.method public abstract whitelist getWebIconDatabase()Landroid/webkit/WebIconDatabase;
.end method

.method public abstract whitelist getWebStorage()Landroid/webkit/WebStorage;
.end method

.method public abstract whitelist getWebViewClassLoader()Ljava/lang/ClassLoader;
.end method

.method public abstract whitelist getWebViewDatabase(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;
.end method
