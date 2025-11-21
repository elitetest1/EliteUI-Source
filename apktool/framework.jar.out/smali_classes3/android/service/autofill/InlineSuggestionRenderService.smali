.class public abstract Landroid/service/autofill/InlineSuggestionRenderService;
.super Landroid/app/Service;
.source "InlineSuggestionRenderService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;,
        Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;
    }
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.autofill.InlineSuggestionRenderService"

.field private static final blacklist TAG:Ljava/lang/String; = "InlineSuggestionRenderService"


# instance fields
.field private final blacklist mActiveInlineSuggestions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

.field private final blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveInlineSuggestions(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/util/LruCache;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMainHandler(Landroid/service/autofill/InlineSuggestionRenderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleDestroySuggestionViews(Landroid/service/autofill/InlineSuggestionRenderService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/autofill/InlineSuggestionRenderService;->handleDestroySuggestionViews(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleGetInlineSuggestionsRendererInfo(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/InlineSuggestionRenderService;->handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleRenderSuggestion(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/service/autofill/InlineSuggestionRenderService;->handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$1;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/InlineSuggestionRenderService$1;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;I)V

    iput-object v0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    return-void
.end method

.method private blacklist handleDestroySuggestionViews(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleDestroySuggestionViews called for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InlineSuggestionRenderService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    invoke-static {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-static {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v2

    if-ne v2, p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Destroy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->releaseSurfaceControlViewHost()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist handleGetInlineSuggestionsRendererInfo(Landroid/os/RemoteCallback;)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/autofill/InlineSuggestionRenderService;->onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method

.method private blacklist handleRenderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v0, p5

    const-string/jumbo v8, "width="

    const-string v9, "InlineSuggestionRenderService"

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "RemoteException calling onError()"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    const/4 v10, 0x0

    move-object/from16 v2, p2

    :try_start_1
    invoke-virtual {v1, v2, v3, v4}, Landroid/service/autofill/InlineSuggestionRenderService;->onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v0, "ExtServices failed to render the inline suggestion view."

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v7}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onError()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    :try_start_3
    const-string v0, "Null suggestion view returned by renderer"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v1, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    return-void

    :cond_1
    :try_start_4
    iput-object v7, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v6

    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v2

    move-object/from16 v17, v6

    move-object v6, v2

    move-object v2, v5

    move-object/from16 v5, v17

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/InlineSuggestionRenderService;->measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", measuredSize="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/service/autofill/InlineSuggestionRoot;

    invoke-direct {v3, v1, v7}, Landroid/service/autofill/InlineSuggestionRoot;-><init>(Landroid/content/Context;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v3, v2}, Landroid/service/autofill/InlineSuggestionRoot;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v12

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v13

    const/4 v15, 0x0

    const/16 v16, -0x2

    const/4 v14, 0x2

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v4, Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/service/autofill/InlineSuggestionRenderService;->getDisplay()Landroid/view/Display;

    move-result-object v5

    new-instance v8, Landroid/window/InputTransferToken;

    invoke-direct {v8, v0}, Landroid/window/InputTransferToken;-><init>(Landroid/os/IBinder;)V

    invoke-direct {v4, v1, v5, v8, v9}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/window/InputTransferToken;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v11}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setFocusable(Z)V

    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda0;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2}, Landroid/view/View;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    new-instance v3, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0, v7}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda1;-><init>(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    move/from16 v5, p8

    move-object v2, v4

    move/from16 v4, p7

    invoke-direct/range {v0 .. v5}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;Landroid/view/SurfaceControlViewHost;Landroid/os/Handler;II)V

    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Landroid/service/autofill/InlineSuggestionRenderService;->mMainHandler:Landroid/os/Handler;

    new-instance v4, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v7, v0, v2, v6}, Landroid/service/autofill/InlineSuggestionRenderService$$ExternalSyntheticLambda2;-><init>(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v1, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v10}, Landroid/service/autofill/InlineSuggestionRenderService;->updateDisplay(I)V

    throw v0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$0(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)V
    .locals 0

    :try_start_0
    invoke-interface {p0}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onClick()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$1(Landroid/view/View$OnLongClickListener;Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/view/View;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onLongClick()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic blacklist lambda$handleRenderSuggestion$2(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;Landroid/view/SurfaceControlViewHost;Landroid/util/Size;)V
    .locals 1

    :try_start_0
    new-instance v0, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;

    invoke-direct {v0, p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiWrapper;-><init>(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)V

    invoke-virtual {p2}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object p1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-interface {p0, v0, p1, p2, p3}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onContent(Landroid/service/autofill/IInlineSuggestionUi;Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "InlineSuggestionRenderService"

    const-string p1, "RemoteException calling onContent()"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist measuredSize(Landroid/view/View;IILandroid/util/Size;Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    const/4 p0, -0x2

    if-eq p2, p0, :cond_0

    if-eq p3, p0, :cond_0

    new-instance p0, Landroid/util/Size;

    invoke-direct {p0, p2, p3}, Landroid/util/Size;-><init>(II)V

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    const/high16 v1, 0x40000000    # 2.0f

    if-ne p2, p0, :cond_1

    invoke-virtual {p5}, Landroid/util/Size;->getWidth()I

    move-result p2

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_1
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_0
    if-ne p3, p0, :cond_2

    invoke-virtual {p5}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_1

    :cond_2
    invoke-static {p3, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :goto_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    new-instance p0, Landroid/util/Size;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p4}, Landroid/util/Size;->getWidth()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p4}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p2, p1}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method


# virtual methods
.method protected final whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "mActiveInlineSuggestions: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {p3}, Landroid/util/LruCache;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mActiveInlineSuggestions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;

    invoke-static {p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmUserId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;->-$$Nest$fgetmSessionId(Landroid/service/autofill/InlineSuggestionRenderService$InlineSuggestionUiImpl;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p3, "ui: [%s] - [%d]  [%d]\n"

    invoke-virtual {p2, p3, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    const-string v0, "android.service.autofill.InlineSuggestionRenderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Landroid/service/autofill/InlineSuggestionRenderService$2;

    invoke-direct {p1, p0}, Landroid/service/autofill/InlineSuggestionRenderService$2;-><init>(Landroid/service/autofill/InlineSuggestionRenderService;)V

    invoke-virtual {p1}, Landroid/service/autofill/InlineSuggestionRenderService$2;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tried to bind to wrong intent (should be android.service.autofill.InlineSuggestionRenderService: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InlineSuggestionRenderService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onGetInlineSuggestionsRendererInfo()Landroid/os/Bundle;
    .locals 0

    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist onRenderSuggestion(Landroid/service/autofill/InlinePresentation;II)Landroid/view/View;
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "service implementation ("

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not implement onRenderSuggestion()"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InlineSuggestionRenderService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final whitelist startIntentSender(Landroid/content/IntentSender;)V
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/InlineSuggestionRenderService;->mCallback:Landroid/service/autofill/IInlineSuggestionUiCallback;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Landroid/service/autofill/IInlineSuggestionUiCallback;->onStartIntentSender(Landroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method
