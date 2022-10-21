package drivers

import (
	"gorm.io/gorm"
	userDomain "learn-ci-cd/businesses/users"
	userDB "learn-ci-cd/drivers/mysql/users"
)

func NewUserRepository(conn *gorm.DB) userDomain.Repository {
	return userDB.NewMySQLRepository(conn)
}
