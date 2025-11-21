.class public final synthetic Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/DecConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/service/autofill/augmented/AugmentedAutofillService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    move-object p2, p3

    check-cast p2, Landroid/os/IBinder;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    move-object p4, p5

    check-cast p4, Landroid/content/ComponentName;

    move-object p5, p6

    check-cast p5, Landroid/view/autofill/AutofillId;

    move-object p6, p7

    check-cast p6, Landroid/view/autofill/AutofillValue;

    check-cast p8, Ljava/lang/Long;

    invoke-virtual {p8}, Ljava/lang/Long;->longValue()J

    move-result-wide p7

    check-cast p9, Landroid/view/inputmethod/InlineSuggestionsRequest;

    check-cast p10, Landroid/service/autofill/augmented/IFillCallback;

    invoke-static/range {p0 .. p10}, Landroid/service/autofill/augmented/AugmentedAutofillService$AugmentedAutofillServiceImpl;->$r8$lambda$WTjBWlfB-Ode51JH39k04VhxolM(Landroid/service/autofill/augmented/AugmentedAutofillService;ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    return-void
.end method
