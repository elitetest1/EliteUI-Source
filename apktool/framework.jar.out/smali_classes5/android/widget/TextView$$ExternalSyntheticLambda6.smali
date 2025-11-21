.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/text/Layout$SelectionRectangleConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/graphics/Path;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/graphics/Path;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda6;->f$0:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public final blacklist accept(FFFFI)V
    .locals 0

    iget-object p0, p0, Landroid/widget/TextView$$ExternalSyntheticLambda6;->f$0:Landroid/graphics/Path;

    invoke-static/range {p0 .. p5}, Landroid/widget/TextView;->lambda$addSearchHighlightPaths$2(Landroid/graphics/Path;FFFFI)V

    return-void
.end method
