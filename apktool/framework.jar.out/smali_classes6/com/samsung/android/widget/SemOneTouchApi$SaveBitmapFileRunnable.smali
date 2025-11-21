.class Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveBitmapFileRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private blacklist foundBitmap:Landroid/graphics/Bitmap;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;

.field private blacklist touchedView:Landroid/view/View;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 6

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-nez v1, :cond_0

    const-string p0, "CurrentLongPressEvent is null, abandon SaveBitmapFile"

    invoke-static {v0, p0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->clone()Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->foundBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->touchedView:Landroid/view/View;

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetBitmapFromImageView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    :cond_1
    if-nez v3, :cond_2

    const-string p0, "getBitmapFromView fail"

    invoke-static {v0, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-static {v1, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v5, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v4, v5}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v4, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msaveBitmapFile(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "key_save_img_result"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0x3e9

    invoke-static {v2, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;->context:Landroid/content/Context;

    invoke-static {v1, p0, v2, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SaveBitmapFileRunnable fail: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
