.class Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;
.super Ljava/util/HashMap;
.source "SemPhotoRemasterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IGetParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->this$0:Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 p1, 0x3e8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3ea

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3eb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x835

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x836

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x837

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x89a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x899

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3ee

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3f0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$ILongParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x3ed

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IStringParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p1, 0x89b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;

    invoke-direct {v1, p1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$IBitmapParamGetter;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/photoremaster/SemPhotoRemasterManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
