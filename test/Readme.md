## Requires 
* AWS Cli가 설치 되어 있고 설정도 되어 있어야하고 terraform도 설치 되어 있어야 합니다.
* ec2_instance.tf 파일에서 참조하는 test-kp-bastion 을 생성해야 하는데, https://ap-northeast-2.console.aws.amazon.com/ec2/home?region=ap-northeast-2#KeyPairs: 링크에서 생성하시면 됩니다.

### Aws-cli 설치
https://docs.aws.amazon.com/ko_kr/cli/latest/userguide/getting-started-install.html
### Terraform 설치
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## 명령어 실행
Terraform 실행 명령어, 현재 directory에서 아래의 명령어를 실행 하시면 됩니다.
```shell
$ terraform init # 초기화

$ terraform plan # 생성될 리소스 미리보기

$ terraform apply --auto-approve  # 리소스 생성

$ terraform plan --destroy # 삭제될 리소스 미리보기

$ terraform apply --auto-approve --destroy # 리소스 삭제
```
