.class public Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;
.super Ljava/lang/Object;
.source "SemRemoteAppDataExtractionManager.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemRemoteAppDataExtractionManager"


# instance fields
.field private blacklist mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    const-string v0, "SemRemoteAppDataExtractionManager"

    if-eqz p1, :cond_1

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p0, "SemRemoteAppDataExtractionManager : Failed to connect to the service"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to connect to the service. Feature is not supported"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "SemRemoteAppDataExtractionManager : Context is null! "

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Context should not be null!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SemRemoteAppDataExtractionManager"

    const-string p1, "getScrollableAreaInfo : rect is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "SemRemoteAppDataExtractionManager"

    const-string p1, "getScrollableViewInfo : rect is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    move-result-object p0

    return-object p0
.end method

.method public whitelist injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")Z"
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/content/smartclip/SemRemoteAppDataExtractionManager;->mManager:Lcom/samsung/android/content/smartclip/SpenGestureManager;

    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "SemRemoteAppDataExtractionManager"

    const-string p1, "injectInputEvent : Empty input event"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
