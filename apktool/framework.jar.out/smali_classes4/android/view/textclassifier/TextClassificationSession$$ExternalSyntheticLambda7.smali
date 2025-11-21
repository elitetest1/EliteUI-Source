.class public final synthetic Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/textclassifier/TextClassifier;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;->f$0:Landroid/view/textclassifier/TextClassifier;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/view/textclassifier/TextClassificationSession$$ExternalSyntheticLambda7;->f$0:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {p0}, Landroid/view/textclassifier/TextClassifier;->getMaxGenerateLinksTextLength()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
