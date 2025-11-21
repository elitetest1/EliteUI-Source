.class public final synthetic Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/NonaConsumer;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    move-object p0, p1

    check-cast p0, Landroid/service/autofill/AutofillFieldClassificationService;

    move-object p1, p2

    check-cast p1, Landroid/os/RemoteCallback;

    move-object p2, p3

    check-cast p2, Ljava/util/List;

    move-object p3, p4

    check-cast p3, [Ljava/lang/String;

    move-object p4, p5

    check-cast p4, [Ljava/lang/String;

    move-object p5, p6

    check-cast p5, Ljava/lang/String;

    move-object p6, p7

    check-cast p6, Landroid/os/Bundle;

    move-object p7, p8

    check-cast p7, Ljava/util/Map;

    move-object p8, p9

    check-cast p8, Ljava/util/Map;

    invoke-static/range {p0 .. p8}, Landroid/service/autofill/AutofillFieldClassificationService$AutofillFieldClassificationServiceWrapper;->$r8$lambda$dvS3lrPyQtCXLZTc0rUTFiVI0dE(Landroid/service/autofill/AutofillFieldClassificationService;Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
