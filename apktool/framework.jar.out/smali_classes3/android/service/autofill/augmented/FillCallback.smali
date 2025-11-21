.class public final Landroid/service/autofill/augmented/FillCallback;
.super Ljava/lang/Object;
.source "FillCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FillCallback"


# instance fields
.field private final blacklist mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor blacklist <init>(Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    return-void
.end method


# virtual methods
.method public whitelist onSuccess(Landroid/service/autofill/augmented/FillResponse;)V
    .locals 5

    sget-boolean v0, Landroid/service/autofill/augmented/AugmentedAutofillService;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroid/service/autofill/augmented/FillCallback;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onSuccess(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p1, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    iget-object p0, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, v1}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillResponse;->getFillWindow()Landroid/service/autofill/augmented/FillWindow;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object p1, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->logEvent(I)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/service/autofill/augmented/FillWindow;->show()V

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    :goto_1
    iget-object p0, p0, Landroid/service/autofill/augmented/FillCallback;->mProxy:Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;

    invoke-virtual {p0, v2, v3, v0}, Landroid/service/autofill/augmented/AugmentedAutofillService$AutofillProxy;->reportResult(Ljava/util/List;Landroid/os/Bundle;Z)V

    return-void
.end method
