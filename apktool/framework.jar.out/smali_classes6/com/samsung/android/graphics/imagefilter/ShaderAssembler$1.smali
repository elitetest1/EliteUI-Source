.class Lcom/samsung/android/graphics/imagefilter/ShaderAssembler$1;
.super Ljava/util/ArrayList;
.source "ShaderAssembler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;->splitFilters()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/graphics/imagefilter/FilterEffect;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

.field final synthetic blacklist val$effect:Lcom/samsung/android/graphics/imagefilter/FilterEffect;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;Lcom/samsung/android/graphics/imagefilter/FilterEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler$1;->this$0:Lcom/samsung/android/graphics/imagefilter/ShaderAssembler;

    iput-object p2, p0, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler$1;->val$effect:Lcom/samsung/android/graphics/imagefilter/FilterEffect;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/imagefilter/ShaderAssembler$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
