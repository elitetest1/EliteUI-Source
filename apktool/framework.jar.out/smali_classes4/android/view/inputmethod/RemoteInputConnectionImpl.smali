.class final Landroid/view/inputmethod/RemoteInputConnectionImpl;
.super Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;,
        Landroid/view/inputmethod/RemoteInputConnectionImpl$Dispatching;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist MAX_END_BATCH_EDIT_RETRY:I = 0x10

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteInputConnectionImpl"


# instance fields
.field private final blacklist mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

.field private blacklist mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

.field private final blacklist mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final blacklist mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mH:Landroid/os/Handler;

.field private final blacklist mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/view/inputmethod/InputConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mLooper:Landroid/os/Looper;

.field private final blacklist mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final blacklist mServedView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWritingToolkitMode:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$2C56kBNyimaX29P3MVRhxNO0E2M(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3DmBqNF13aie-a5EIGTDam2GYiI(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$3lxrMXxq1QMFsVDwXnh3mmu3RMY(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$scheduleInvalidateInput$0(ZI)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$4LMyUC6p0-Fj9sbH6GIghTrYGPU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$83kI_8DE8QPzNbnMIw4Y2rfJDVA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$8mdzVg9OM5CBv_YksdyQ663v55E(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$9UjqFI5m9SQ-gZZ0VB9SvYbiZ0Y(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$AtkMLLxcy5g1MXf9P4aKlq2bQm8(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingTextFromImm$28(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dw2D1NzOzFGWxY0ztsZiHTLunGU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$EUERrMmFWaCcxNB0CVkY1s1qoH4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FsYJ8kSvg8CtEcKdSejAdzr-dGM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GFLnvxklWdoKHjk0DrLYpMhE-1g(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$GZeUaEPlCkqFpC7lxUHm4FjcbUw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Jl5UsxtFJ64KyE-rGTA_d_NwhC4(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$McaSonbrTHfn24t_UgDkwWl_JYQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$P1GDz5k6xJZtEkJ1DmJ85vgIoU8(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QwyLsEZO04OVNjlzlKUz9xEDa6o(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$SC6yE21q7zB79UROiWapKoDefBs(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Spv6NJX-Ec0uCXWw69WmnCGktlo(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deactivate$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Sxvg3alSSuKzwtfL5lRRfd7PMpk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Uh8URo82f0MjubEypaK8zPA4zQw(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$dispatchReportFullscreenMode$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XU-SuXKkN3ILKRxFTCHfLovtJlk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$YcCflVJvz7SJ4NuA0eRcxDz2wCU(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_59LTabtiYamKtdZlFlPT6542TY(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performPrivateCommand$37(Ljava/lang/String;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_m3ZM_ItmcRhlzdt4odb11Apn54(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_xKJPJrJJZYBqngdrvYK2VulS5c(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bDeQT_16kPCdAlnvdVpYc7zFB4Q(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$bs_OGDwcIOuiGW9xVFpzltCkpyk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$dyvX76mWLIMlRRSgQ0CT-rRsrEE(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j-M_QPFLZ9I4th0U_0AhU8K8-P0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jNtA8MXobPnaECkNr8D9WTYrxk0(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jZBuwHllbrn8tvvICsL4sRvy75A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jzyi6yM7okUO4q2FYn7gAgT527A(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$khtpaUPMwPCPA2OFIatCbNHReuc(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$npKDQ_czdKHds7zXHiWT6X3YJ68(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oCGT6VRG2saCoErDu6z0JYMxcYg(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qOfgWGuiQt21-4kIdHEisasbOxM(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$soHIVgnaTkxIKf20X9il0IHyeeA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xUxPv729eCgLtBM4c4ySLh3kNRQ(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z-R71fdG3JYWpp8pqgPpN3aJVEk(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zWZM9TttDJHRz4-dTwVYI-0IAPA(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeactivateRequested(Landroid/view/inputmethod/RemoteInputConnectionImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckSessionId(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchWithTracing(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smuseImeTracing()Z
    .locals 1

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result v0

    return v0
.end method

.method constructor blacklist <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mWritingToolkitMode:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$1;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    iput-object p3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private blacklist checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z
    .locals 2

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session id mismatch header.sessionId: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currentSessionId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " while calling "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RemoteInputConnectionImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist dispatch(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;[B>;)V"
        }
    .end annotation

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v2, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda36;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V

    invoke-direct {v1, v5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    move-object p2, v0

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/CancellationSignalBeamer$Receiver;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/CancellationSignalBeamer$Receiver;-><init>(Z)V

    iput-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    return-object v0
.end method

.method private blacklist getServedView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private blacklist isFinished()Z
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isInjectionFromKcap(I)Z
    .locals 1

    const/16 p0, 0x270f

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "sys.datawedge.prop"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    return v0
.end method

.method private synthetic blacklist lambda$beginBatchEdit$34(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "beginBatchEdit on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$cancelCancellationSignal$2(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->cancel(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$clearMetaKeyStates$31(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitCompletion$19(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "commitCompletion on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitContent$45(Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 10

    const-string v1, "RemoteInputConnectionImpl"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v9

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move v5, p2

    invoke-interface/range {v4 .. v9}, Landroid/app/IUriGrantsManager;->checkGrantUriPermission_ignoreNonSystem(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    invoke-direct {p0, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-interface {p2, p1, p4, p5}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "commitContent with invalid inputContentInfo="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    const-string p0, "commitContent on inactive InputConnection"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catch_1
    move-exception v0

    move-object p0, v0

    const-string p1, "commitContent with invalid Uri permission from IME:"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$commitCorrection$20(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "commitCorrection on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitText$17(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 1

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isInjectionFromKcap(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "commitText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$commitTextWithTextAttribute$18(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "commitText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$deactivate$1()V
    .locals 4

    const-string v0, "InputConnection#closeConnection"

    const-wide/16 v1, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    iget-object v3, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->onInputConnectionClosedInternal()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda37;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getHandwritingInitiator()Landroid/view/HandwritingInitiator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/HandwritingInitiator;->onInputConnectionClosed(Landroid/view/View;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v3
.end method

.method private synthetic blacklist lambda$deleteSurroundingText$32(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "deleteSurroundingText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$deleteSurroundingTextInCodePoints$33(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$dispatchReportFullscreenMode$4(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$dispatchWithTracing$48(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InputConnection#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method private synthetic blacklist lambda$dispatchWithTracing$49(Ljava/util/function/Supplier;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Function;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "RemoteInputConnectionImpl#"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p2, p3, p0, p1}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2, p0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    throw p0
.end method

.method private synthetic blacklist lambda$endBatchEdit$35(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "endBatchEdit on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$finishComposingText$29(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "finishComposingText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void
.end method

.method private synthetic blacklist lambda$finishComposingTextFromImm$28(I)V
    .locals 1

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void

    :cond_3
    :goto_1
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "finishComposingTextFromImm on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$forgetCancellationSignal$3(Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    invoke-virtual {p0, p1}, Landroid/os/CancellationSignalBeamer$Receiver;->forget(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$getCursorCapsMode$13(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/Integer;
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "getCursorCapsMode on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getCursorCapsMode$14(ILjava/lang/Integer;)[B
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetCursorCapsModeProto(II)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getExtractedText$15(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "getExtractedText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getExtractedText$16(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$getSelectedText$10(ILjava/lang/CharSequence;)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getSelectedText$9(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string p1, "getSelectedText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private synthetic blacklist lambda$getSurroundingText$11(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Landroid/view/inputmethod/SurroundingText;
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getSurroundingText due to an invalid beforeLength="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    if-gez p3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getSurroundingText due to an invalid afterLength="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->getSurroundingText(III)Landroid/view/inputmethod/SurroundingText;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    const-string p0, "getSurroundingText on inactive InputConnection"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getSurroundingText$12(IIILandroid/view/inputmethod/SurroundingText;)[B
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getTextAfterCursor$5(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getTextAfterCursor due to an invalid length="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getTextAfterCursor$6(IILjava/lang/CharSequence;)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$getTextBeforeCursor$7(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/CharSequence;
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    const-string v1, "RemoteInputConnectionImpl"

    if-eqz p1, :cond_3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Returning null to getTextBeforeCursor due to an invalid length="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method static synthetic blacklist lambda$getTextBeforeCursor$8(IILjava/lang/CharSequence;)[B
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/inputmethod/InputConnectionProtoDumper;->buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$performContextMenuAction$23(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performContextMenuAction on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$performEditorAction$22(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performEditorAction on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic blacklist lambda$performHandwritingGesture$38(Landroid/os/ResultReceiver;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$performHandwritingGesture$39(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    new-instance p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p2, :cond_3

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;

    invoke-direct {v1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda27;-><init>(Landroid/os/ResultReceiver;)V

    :cond_3
    invoke-interface {p1, p3, p0, v1}, Landroid/view/inputmethod/InputConnection;->performHandwritingGesture(Landroid/view/inputmethod/HandwritingGesture;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    return-void

    :cond_4
    :goto_1
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performHandwritingGesture on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    invoke-virtual {p2, v0, v1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_5
    return-void
.end method

.method private synthetic blacklist lambda$performPrivateCommand$37(Ljava/lang/String;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/Bundle;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v0, :cond_0

    const-string v0, "actionDeactivate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->setWritingToolkitMode(Z)V

    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->deactivate()V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p2, p1, p3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    return-void

    :cond_3
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performPrivateCommand on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$performSpellCheck$36(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->performSpellCheck()Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "performSpellCheck on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$previewHandwritingGesture$40(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p3, p2}, Landroid/view/inputmethod/InputConnection;->previewHandwritingGesture(Landroid/view/inputmethod/PreviewableHandwritingGesture;Landroid/os/CancellationSignal;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "previewHandwritingGesture on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic blacklist lambda$replaceText$47(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/view/inputmethod/InputConnection;->replaceText(IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "replaceText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$requestCursorUpdates$41(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p2, v0, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic blacklist lambda$requestCursorUpdatesWithFilter$42(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->requestCursorUpdatesInternal(III)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$requestTextBoundsInfo$43(Landroid/os/ResultReceiver;Landroid/view/inputmethod/TextBoundsInfoResult;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getResultCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfoResult;->getTextBoundsInfo()Landroid/view/inputmethod/TextBoundsInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/inputmethod/TextBoundsInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$requestTextBoundsInfo$44(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-nez p1, :cond_0

    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;

    invoke-direct {v0, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda42;-><init>(Landroid/os/ResultReceiver;)V

    invoke-interface {p1, p3, p0, v0}, Landroid/view/inputmethod/InputConnection;->requestTextBoundsInfo(Landroid/graphics/RectF;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "requestTextBoundsInfo on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method

.method private synthetic blacklist lambda$scheduleInvalidateInput$0(ZI)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isFinished()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :goto_0
    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getServedView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->contains(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    move-result v5

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    if-eqz v5, :cond_5

    move v5, v0

    :cond_3
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    add-int/2addr v5, v6

    const/16 v7, 0x10

    if-le v5, v7, :cond_3

    const-string v4, "RemoteInputConnectionImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#endBatchEdit() still returns true even after retrying "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " times.  Falling back to InputMethodManager#restartInput(View)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->add(Ljava/lang/Class;)V

    move v4, v6

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    if-nez v4, :cond_7

    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->takeSnapshot()Landroid/view/inputmethod/TextSnapshot;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->doInvalidateInput(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/TextSnapshot;I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1
.end method

.method private synthetic blacklist lambda$sendKeyEvent$30(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 1

    iget v0, p1, Lcom/android/internal/inputmethod/InputConnectionCommandHeader;->mSessionId:I

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->isInjectionFromKcap(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "sendKeyEvent on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegion$24(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setComposingRegion on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setComposingRegionWithTextAttribute$25(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(IILandroid/view/inputmethod/TextAttribute;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setComposingRegion on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setComposingText$26(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setComposingText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setComposingTextWithTextAttribute$27(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3, p4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setComposingText on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setImeConsumesInput$46(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/view/inputmethod/InputConnection;->setImeConsumesInput(Z)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setImeConsumesInput on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic blacklist lambda$setSelection$21(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->checkSessionId(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :cond_2
    :goto_0
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "setSelection on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist requestCursorUpdatesInternal(III)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mRequestCursorUpdateDisplayIdCheck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mParentInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getDisplayId()I

    move-result v2

    if-eq v2, p3, :cond_1

    return v1

    :cond_1
    and-int/lit8 p3, p1, 0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    move p3, v2

    goto :goto_0

    :cond_2
    move p3, v1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(II)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_2

    :cond_4
    move p3, v1

    :goto_2
    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_5

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p1

    :catch_0
    iget-object p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v1

    :cond_6
    :goto_3
    const-string p0, "RemoteInputConnectionImpl"

    const-string/jumbo p1, "requestCursorUpdates on inactive InputConnection"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static blacklist useImeTracing()Z
    .locals 1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/ImeTracing;->isEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist asIRemoteAccessibilityInputConnection()Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mAccessibilityInputConnection:Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;

    return-object p0
.end method

.method public blacklist beginBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda18;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "beginBatchEdit"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist cancelCancellationSignal(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda45;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist clearMetaKeyStates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda14;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string p1, "clearMetaKeyStates"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitCompletion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda10;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CompletionInfo;)V

    const-string p1, "commitCompletion"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitContent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v4, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda4;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/view/inputmethod/InputContentInfo;ILcom/android/internal/inputmethod/InputConnectionCommandHeader;ILandroid/os/Bundle;)V

    const-string p0, "commitContent"

    invoke-direct {v1, p0, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public blacklist commitCorrection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda16;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/CorrectionInfo;)V

    const-string p1, "commitCorrection"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda46;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string p1, "commitText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist commitTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 6

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda26;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string p0, "commitTextWithTextAttribute"

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist deactivate()V
    .locals 2

    iget-boolean v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mWritingToolkitMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda17;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist deleteSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda44;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string p1, "deleteSurroundingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist deleteSurroundingTextInCodePoints(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda21;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string p1, "deleteSurroundingTextInCodePoints"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist dispatchReportFullscreenMode(Z)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda50;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Z)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputConnection;

    instance-of v1, v0, Landroid/view/inputmethod/DumpableInputConnection;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mLooper:Landroid/os/Looper;

    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast v0, Landroid/view/inputmethod/DumpableInputConnection;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/inputmethod/DumpableInputConnection;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    return-void
.end method

.method public blacklist endBatchEdit(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda13;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "endBatchEdit"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist finishComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda20;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string p1, "finishComposingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist finishComposingTextFromImm()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    new-instance v1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda12;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;I)V

    const-string v0, "finishComposingTextFromImm"

    invoke-direct {p0, v0, v1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist forgetCancellationSignal(Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mBeamer:Landroid/os/CancellationSignalBeamer$Receiver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda38;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatch(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist getCursorCapsMode(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda3;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "getCursorCapsMode"

    invoke-direct {p0, p2, p3, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getExtractedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda22;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ExtractedTextRequest;I)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda23;-><init>(Landroid/view/inputmethod/ExtractedTextRequest;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "getExtractedText"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mInputConnectionRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputConnection;

    return-object p0
.end method

.method public blacklist getSelectedText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;ILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda31;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;

    invoke-direct {p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda32;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "getSelectedText"

    invoke-direct {p0, p2, p3, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getSurroundingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 6

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda7;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;

    invoke-direct {p0, v3, v4, v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda8;-><init>(III)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "getSurroundingText"

    invoke-direct {v1, p1, p5, v0, p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getTextAfterCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda24;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda25;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "getTextAfterCursor"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getTextBeforeCursor(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda34;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    invoke-static {}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->useImeTracing()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;

    invoke-direct {p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda35;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "getTextBeforeCursor"

    invoke-direct {p0, p2, p4, v0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;Ljava/util/function/Function;)V

    return-void
.end method

.method public blacklist getWritingToolkitMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mWritingToolkitMode:Z

    return p0
.end method

.method public blacklist hasPendingInvalidation()Z
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist isAssociatedWith(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, p1}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isCursorAnchorInfoMonitoring()Z
    .locals 0

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mIsCursorAnchorInfoMonitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public blacklist performContextMenuAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda5;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p1, "performContextMenuAction"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performEditorAction(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda33;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;I)V

    const-string/jumbo p1, "performEditorAction"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/ResultReceiver;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p2

    instance-of v0, p2, Landroid/view/inputmethod/CancellableHandwritingGesture;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Landroid/view/inputmethod/CancellableHandwritingGesture;

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/CancellableHandwritingGesture;->unbeamCancellationSignal(Landroid/os/CancellationSignalBeamer$Receiver;)V

    invoke-virtual {v0}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/CancellableHandwritingGesture;->getCancellationSignal()Landroid/os/CancellationSignal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    const/4 p0, 0x4

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda29;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/view/inputmethod/HandwritingGesture;)V

    const-string/jumbo p1, "performHandwritingGesture"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performPrivateCommand(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;

    invoke-direct {v0, p0, p2, p1, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda39;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Ljava/lang/String;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/Bundle;)V

    const-string/jumbo p1, "performPrivateCommand"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist performSpellCheck(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;

    invoke-direct {v0, p0, p1}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda40;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;)V

    const-string/jumbo p1, "performSpellCheck"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist previewHandwritingGesture(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/inputmethod/ParcelableHandwritingGesture;Landroid/os/IBinder;)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-direct {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getCancellationSignalBeamer()Landroid/os/CancellationSignalBeamer$Receiver;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/CancellationSignalBeamer$Receiver;->unbeam(Landroid/os/IBinder;)Landroid/os/CancellationSignal;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/inputmethod/ParcelableHandwritingGesture;->get()Landroid/view/inputmethod/HandwritingGesture;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/PreviewableHandwritingGesture;

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/CancellationSignal;Landroid/view/inputmethod/PreviewableHandwritingGesture;)V

    const-string/jumbo p1, "previewHandwritingGesture"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist replaceText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 8

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda49;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILjava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p0, "replaceText"

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist requestCursorUpdates(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILcom/android/internal/infra/AndroidFuture;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda47;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "requestCursorUpdates"

    invoke-direct {p0, p1, p4, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public blacklist requestCursorUpdatesWithFilter(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IIILcom/android/internal/infra/AndroidFuture;)V
    .locals 6

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda11;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;III)V

    const-string/jumbo p0, "requestCursorUpdates"

    invoke-direct {v1, p0, p5, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public blacklist requestTextBoundsInfo(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/graphics/RectF;Landroid/os/ResultReceiver;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p3, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda43;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/os/ResultReceiver;Landroid/graphics/RectF;)V

    const-string/jumbo p1, "requestTextBoundsInfo"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist resetHasPendingImmediateCursorAnchorInfoUpdate()Z
    .locals 1

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingImmediateCursorAnchorInfoUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p0

    return p0
.end method

.method public blacklist scheduleInvalidateInput()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->scheduleInvalidateInput(Z)V

    return-void
.end method

.method blacklist scheduleInvalidateInput(Z)V
    .locals 3

    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mHasPendingInvalidation:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mCurrentSessionId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mH:Landroid/os/Handler;

    new-instance v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda15;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public blacklist sendKeyEvent(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda41;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Landroid/view/KeyEvent;)V

    const-string/jumbo p1, "sendKeyEvent"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setComposingRegion(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda6;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "setComposingRegion"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setComposingRegionWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V
    .locals 6

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda19;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;IILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p0, "setComposingRegionWithTextAttribute"

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setComposingText(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda28;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;I)V

    const-string/jumbo p1, "setComposingText"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setComposingTextWithTextAttribute(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V
    .locals 6

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda48;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Ljava/lang/CharSequence;ILandroid/view/inputmethod/TextAttribute;)V

    const-string/jumbo p0, "setComposingTextWithTextAttribute"

    invoke-direct {v1, p0, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setImeConsumesInput(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1, p2}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda30;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;Z)V

    const-string/jumbo p1, "setImeConsumesInput"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setSelection(Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/inputmethod/RemoteInputConnectionImpl$$ExternalSyntheticLambda9;-><init>(Landroid/view/inputmethod/RemoteInputConnectionImpl;Lcom/android/internal/inputmethod/InputConnectionCommandHeader;II)V

    const-string/jumbo p1, "setSelection"

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchWithTracing(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist setWritingToolkitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mWritingToolkitMode:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RemoteInputConnectionImpl{connection="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDeactivateRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mDeactivateRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/inputmethod/RemoteInputConnectionImpl;->mServedView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
