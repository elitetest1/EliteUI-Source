.class Landroid/telephony/SmsManager$4;
.super Ljava/lang/Object;
.source "SmsManager.java"

# interfaces
.implements Landroid/telephony/SmsManager$SubscriptionResolverResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$deliveryIntents:Ljava/util/List;

.field final synthetic blacklist val$destinationAddress:Ljava/lang/String;

.field final synthetic blacklist val$expectMore:Z

.field final synthetic blacklist val$finalPriority:I

.field final synthetic blacklist val$finalValidity:I

.field final synthetic blacklist val$parts:Ljava/util/List;

.field final synthetic blacklist val$persistMessage:Z

.field final synthetic blacklist val$scAddress:Ljava/lang/String;

.field final synthetic blacklist val$sentIntents:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p2, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iput-object p3, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iput-object p5, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iput-object p6, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iput-boolean p7, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iput p8, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iput-boolean p9, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iput p10, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .locals 1

    iget-object p0, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method public blacklist onSuccess(I)V
    .locals 13

    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->-$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroid/telephony/SmsManager$4;->val$destinationAddress:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/SmsManager$4;->val$scAddress:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/SmsManager$4;->val$parts:Ljava/util/List;

    iget-object v7, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    iget-object v8, p0, Landroid/telephony/SmsManager$4;->val$deliveryIntents:Ljava/util/List;

    iget-boolean v9, p0, Landroid/telephony/SmsManager$4;->val$persistMessage:Z

    iget v10, p0, Landroid/telephony/SmsManager$4;->val$finalPriority:I

    iget-boolean v11, p0, Landroid/telephony/SmsManager$4;->val$expectMore:Z

    iget v12, p0, Landroid/telephony/SmsManager$4;->val$finalValidity:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v1, p1

    invoke-interface/range {v0 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SmsManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/telephony/SmsManager$4;->val$sentIntents:Ljava/util/List;

    const/16 p1, 0x1f

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->-$$Nest$smnotifySmsError(Ljava/util/List;I)V

    :cond_0
    return-void
.end method
